package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MemberVo {
	private String member_id;
	private String member_pw;
	private String first_name;
	private String last_name;
	private String phone;
	private Date birth_date;
	private String gender;
	private Date reg_date;
}
	
	
