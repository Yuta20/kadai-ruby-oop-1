# 勝ち負け数を管理するための Team クラスを作成して、インスタンスを6チーム分生成した後に各チームの勝ち負け数を表示するプログラムを作成してください。
# 課題に取り組む上で、下記の仕様を満たすようにしましょう。

# 1. Teamクラスの定義
  # 以下の4つのインスタンス変数を Team クラスに持たせてください：
    # name（英語のチーム名：Giants Tigers Dragons BayStars Carp Swallows）
    # win（勝ち数）
    # lose（負け数）
    # draw（引き分け数）
  # initialize の処理を定義してください：
    # 各インスタンス変数（名前・勝ち数・負け数・引き分け数）を初期化できるようにしてください
  # 以下の2つのインスタンスメソッドを Team クラスに持たせてください：
    # calc_win_rate（勝率）
      # 勝率を戻り値とするメソッドにしてください。勝率は 勝ち数/(勝ち数+負け数) で算出できます。引き分け数は除きますので注意してください（記録の計算方法 ｜ 野球の記録について より）。また、勝率は計算で算出できるので、メソッドで定義する形としています
      # ヒント：勝ち数と負け数は、ともに整数のため、to_f を使って割り算をしましょう
    # show_team_result（チームの成績をターミナルに表示する）
      # インスタンス変数の値を使って ○○ の2020年の成績は △△勝 □□敗 ☆☆分、勝率は 0.▽▽▽▽▽▽です。 と表示するメソッドにしてください
# 2. インスタンスの生成
  # 6チーム分の Team クラスのインスタンスを生成しinitializeで各インスタンス変数（名前・勝ち数・負け数・引き分け数）を初期化してください
# 3. show_team_result の呼び出し
  # 表の見出しを表示したあと、各インスタンスの show_team_result メソッドを呼び出して、勝敗情報を表示してください。

# 出力結果
# Giants の2020年の成績は 67勝 45敗 8分、勝率は 0.5982142857142857です。
# Tigers の2020年の成績は 60勝 53敗 7分、勝率は 0.5309734513274337です。
# Dragons の2020年の成績は 60勝 55敗 5分、勝率は 0.5217391304347826です。
# BayStars の2020年の成績は 56勝 58敗 6分、勝率は 0.49122807017543857です。
# Carp の2020年の成績は 52勝 56敗 12分、勝率は 0.48148148148148145です。
# Swallows の2020年の成績は 41勝 69敗 10分、勝率は 0.37272727272727274です。


# クラス定義
class Team
  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw
  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  # インスタンスが持つメソッド（処理）
  def calc_win_rate
    self.win.to_f / (self.win.to_f + self.lose.to_f)
  end
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end
# インスタンスの生成と、変数への代入
giants = Team.new("Giants", 67, 45, 8)
tigers = Team.new("Tigers", 60, 53, 7)
dragons = Team.new("Dragons", 60, 55, 5)
baystars = Team.new("BayStars", 56, 58, 6)
carp = Team.new("Carp", 52, 56, 12)
swallows = Team.new("Swallows", 41, 69, 10)
# インスタンスの使用
giants.show_team_result
tigers.show_team_result
dragons.show_team_result
baystars.show_team_result
carp.show_team_result
swallows.show_team_result