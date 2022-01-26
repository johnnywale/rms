table! {
    POSTS (id) {
        id -> Bigint,
        title -> Varchar,
        text -> Nullable<Varchar>,
        published -> Nullable<Bool>,
    }
}
