package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Freeboard {
private int board_id;
private String member_id;
private String board_pw;
private String subject;
private String content;
private int read_Count;
private Timestamp writing_date;
private int commentCount;

}
