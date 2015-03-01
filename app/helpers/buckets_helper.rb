module BucketsHelper
  def bucket_breadcrumbs(bucket = nil)
    if bucket.nil?
      content_tag :div, class: "ui breadcrumb segment" do
        concat link_to "Root", buckets_path, class: 'section'
        concat content_tag :i, '', class: 'right chevron icon divider'
      end
    else
      content_tag :div, class: "ui breadcrumb segment" do
        concat link_to "Root", buckets_path
        concat content_tag :i, '', class: 'right chevron icon divider'
        bucket.ancestors.reverse.each do |ancestor|
          concat link_to ancestor.name, bucket_path(ancestor), class: 'section'
          concat content_tag :i, '', class: 'right chevron icon divider'
        end
        concat link_to bucket.name, bucket_path(bucket), class: 'section active'
      end
    end
  end
end
