#import <stdio.h>
#import <Foundation/NSObject.h>

void chapter0201(void) {
    printf("=== Chapter 02-01 ===\n");
    // オブジェクトの型は id
    id obj;
    // オブジェクトにメッセージを送るのにはメッセージ式 ([obj msg]) を使う。
    // インスタンス生成はクラス名に対してメッセージ alloc を送る。 (メモリの確保。)
    obj = [NSObject alloc];
    // インスタンスの初期化は別途必要。 初期化のためのメソッドはイニシャライザ (initializer) と呼ばれる。 (メソッド名はクラスごとに異なる。 Cocoa では init か init で始まる名前。)
    [obj init]; // 本来は nil チェックが必要かも？
    // 引数はコロンの後ろに記述。 第 2 引数以降にはキーワードが付けられることが多い。
    // メッセージを識別するための名前をメッセージセレクタ (message selector) やセレクタ (selector)、メソッド名などと呼ぶ。
    // 引数を含める場合のコロンやキーワードもセレクタの一部。

    printf("obj is kind of NSObject : %hhu\n", [obj isKindOfClass: NSObject.class]);
}

// === Chapter 02-02 ===
// クラスのインターフェイス部。

// @interface や @end は Objective-C のコンパイラ指示子 (compiler directive)。
@interface Chapter0202 : NSObject
{
    // インスタンス変数の宣言。
    int val;
}
// メソッドの宣言。
// メソッドの宣言で型を指定しなかったら id 型だとみなされるが、省略しない方が良い。
- (id) initWithValue: (int) value;
- (void) setValue: (int) value;
- (int) value;
@end

// クラスの実装部
@implementation Chapter0202
- (id) initWithValue: (int) value
{
    self = [super init];
    if (self != nil) {
        val = value;
    }
    return self;
}
- (void) setValue: (int) value
{
    val = value;
}
- (int) value
{
    return val;
}
@end

void chapter0202(void) {
    printf("=== Chapter 02-02 ===\n");

    id obj = [[Chapter0202 alloc] initWithValue: 10];
    printf("value : %d\n", [obj value]);
    [obj setValue: 20];
    printf("value : %d\n", [obj value]);
}

int main(void) {
    printf("Hello world!\n");

    chapter0201();
    chapter0202();

    return 0;
}
