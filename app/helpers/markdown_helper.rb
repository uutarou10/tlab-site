module MarkdownHelper
  def markdown(text)
    unless @processor
      @processor = Qiita::Markdown::Processor.new(hostname: 'localhost')
    end

    @processor.call(text)[:output].to_s.html_safe
  end
end