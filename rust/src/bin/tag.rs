#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Default)]
struct Tag {
    pub id: u64,
    pub label: &'static str,
    pub featured: bool
}

fn main() {
    let t1 = Tag { id: 1, label: "Rust", featured: true };
    let t2 = Tag { id: 2, label: "Swift", featured: false };
    let t3 = Tag::default();
    assert!(t1 != t2);
    assert!(t1 < t2);
    assert_eq!(t3, Tag { id: 0, label: "", featured: false });
    assert_eq!(format!("{:?}", t1),
        "Tag { id: 1, label: \"Rust\", featured: true }");
}