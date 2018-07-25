jQuery.fn.extend({

    listslider: function(config){

        var global = this;

        if(config==undefined){
            config = {};
        }

        if(config.left_label === undefined){
            config.left_label = 'left';
        }

        if(config.right_label === undefined){
            config.right_label = 'right';
        }

        if(config.scroll_offset === undefined){
            config.scroll_offset = 100;
        }

        for(var i = 0 ; i < this.length ; i++){
            initListsliderFor($(this[i]));
        }

        global.touchHandler = function(){

            var self = this;
            self.previous_scroll = undefined;
            self.last_difference = 0;

            self.is_dragging = false;

            return {
                'isUserDragging': function(){
                    return self.is_dragging;
                },
                'onUserDragged': function(event){
                    var touch = event.originalEvent.touches[0];
                    if(self.previous_scroll !== undefined){
                        self.last_difference += touch.pageX - self.previous_scroll.pageX;
                    }
                    self.previous_scroll = touch;
                },
                'getHorizontalDifference': function(){
                    var hlp = self.last_difference;
                    self.last_difference = 0;
                    return hlp;
                },
                'onStartedDragging': function(){
                    self.is_dragging = true;
                    self.last_difference = 0;
                    self.previous_scroll = undefined;
                },
                'onStoppedDragging': function(){
                    self.is_dragging = false;
                    self.last_difference = 0;
                    self.previous_scroll = undefined;
                }
            }
        }();

        function initListsliderFor(element){

            var self = this;

            self.getSummedWidthOfListItems = function(){
                var sum = 0;
                var list_items = self.ul.find('li');
                for (var i = 0 ; i < list_items.length ; i++){
                    sum += $(list_items[i]).outerWidth();
                }
                return sum + 10;
            };

            self.setupParentDiv = function(){
                self.parent = self.ul.parent();
                self.parent.css('position', 'relative');
            };

            self.showPaginationIfWrapperIsHidden = function(){
                var wrapper_width = self.getSummedWidthOfListItems();
                if($(self.parent).width() < wrapper_width){
                    $(self.parent).find('.listslider-arrow').addClass('active');
                }  else{
                    $(self.parent).find('.listslider-arrow').removeClass('active');
                }
            };

            self.addWrapper = function(){
                self.ul.wrap('<div class="listslider-container"><div class="listslider-wrapper"></div></div>');
                self.wrapper = $(self.ul.closest('.listslider-wrapper'));
                var wrapper_width = self.getSummedWidthOfListItems();
                self.wrapper.css('width', wrapper_width + 'px');
            };

            self.addContainer = function(){
                self.container = $(self.ul.closest('.listslider-container'));
            };

            self.addArrows = function(){
                self.parent.append('<div class="listslider-left listslider-arrow">' + config.left_label + '</div>');
                self.parent.append('<div class="listslider-right listslider-arrow">' + config.right_label + '</div>');

                self.right_arrow = $('.listslider-right.listslider-arrow');
                self.left_arrow = $('.listslider-left.listslider-arrow');
            };

            self.scroll = function(amount){
                self.container.animate({
                   scrollLeft:  self.container.scrollLeft() + amount
                });
            };



            $(window).on('resize', function(){
                self.showPaginationIfWrapperIsHidden();
            });

            self.attachEventsToElements  = function(){
                self.container.on('touchstart',function(e){

                    global.touchHandler.onStartedDragging();
                });

                self.container.on('touchend',function(e){

                    global.touchHandler.onStoppedDragging();
                });

                self.container.on('touchmove',function(e){
                    if(global.touchHandler.isUserDragging()){
                        var diff = global.touchHandler.getHorizontalDifference();
                        if(diff == 0){
                            global.touchHandler.onUserDragged(e);
                            return;
                        }
                        self.container.scrollLeft(self.container.scrollLeft() - diff);
                        global.touchHandler.onUserDragged(e);
                    }
                });


                $(self.parent).on('click', '.listslider-arrow', function(){
                    if($(this).hasClass('listslider-left')){
                        self.scroll(-1 * config.scroll_offset);
                    }else{
                        self.scroll(config.scroll_offset);
                    }
                });
            };




            self.ul = $(element);
            self.ul.addClass('listslider');

            self.setupParentDiv();
            self.addWrapper();
            self.addContainer();
            self.addArrows();
            self.attachEventsToElements();
            self.showPaginationIfWrapperIsHidden();

        }
    }
});