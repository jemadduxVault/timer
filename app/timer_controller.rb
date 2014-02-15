class TimerController < UIViewController
  attr_reader :margin

  def viewDidLoad
    @margin = 20
    create_label
    create_margin
  end

  def actionTapped
    if @timer
      @timer.invalidate
      @timer = nil
    else
      @duration = 0
      @timer = NSTimer.scheduledTimerWithInterval(0.1, target: self, selector: ######)
    end
    @action.selected = !@action.selected?
  end

  def timerFeed
    @state.text = "%.1f" % (@duration += 0.1)
  end

private
  def create_label

  end

  def create_button
    @action = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @action.setTitle("Start", forState: UIControlStateNormal)
    @action.setTitle("Stop",  forState: UiControlStateSelected)
    @action.addTarget(self, )
  end
end