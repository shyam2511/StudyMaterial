package manage;

public class student {
		
		
		String studentName;
		String StudentPhone;
		
		public student(String n, String ph)
		{
			super();
			this.studentName=n;
			this.StudentPhone=ph;
		}

		public String getStudentName() {
			return studentName;
		}

		public void setStudentName(String studentName) {
			this.studentName = studentName;
		}

		public String getStudentPhone() {
			return StudentPhone;
		}

		public void setStudentPhone(String studentPhone) {
			StudentPhone = studentPhone;
		}
}
