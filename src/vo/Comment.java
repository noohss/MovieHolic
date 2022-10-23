package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
private int review_id;
private int movie_id;
private String member_id;
private String content;
private Timestamp create_date;
private Timestamp modify_date;
}
