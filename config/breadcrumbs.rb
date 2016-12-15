crumb :root do
  link 'RoR Workhops', root_path
end

crumb :students do
  link t('navbar.students'), students_path
end


crumb :student do |student|
  link "#{student.first_name} #{student.last_name}", student_path(student)
  parent :students
end

crumb :student_subjects do |student|
  link "#{student.first_name} #{student.last_name} #{t('shared.subjects')}", student_subjects_path(student)
  parent :students
end

crumb :payments do
  link t('navbar.payments'), payments_path
end

crumb :payment do |payment|
  link "#{payment.amount} #{payment.payment_date} #{payment.student_id}", payment_path(payment)
  parent :payments
end

crumb :student_payments do |student|
  link "#{student.first_name} #{student.last_name} #{t('shared.payments')}", student_payments_path(student)
  parent :students
end

crumb :teachers do
  link t('navbar.teachers'), teachers_path
end

crumb :teacher do |teacher|
  link "#{teacher.academic_title} #{teacher.first_name} #{teacher.last_name}", teacher_path(teacher)
  parent :teachers
end

crumb :teacher_subjects do |teacher|
  link "#{teacher.first_name} #{teacher.last_name} #{t('shared.subjects')}", teacher_subjects_path(teacher)
  parent :teachers
end

crumb :subjects do
  link t('navbar.reports_subjects'), report_subjects_path
end
