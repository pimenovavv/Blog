package main.model;


import lombok.Data;
import javax.persistence.*;
import java.util.Date;


@Data
@Entity
@Table(name="post_votes")
public class PostVotes {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int Id;

    private Date time;
    private boolean value;

    @ManyToOne(cascade={CascadeType.PERSIST, CascadeType.DETACH, CascadeType.REFRESH, CascadeType.MERGE})
    @JoinColumn(name="user_id", insertable = false, updatable = false)
    private User user;

    @ManyToOne(cascade={CascadeType.PERSIST, CascadeType.DETACH, CascadeType.REFRESH, CascadeType.MERGE})
    @JoinColumn(name="post_id", insertable = false, updatable = false)
    private Post post;

}
