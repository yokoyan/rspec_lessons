require 'calc'

RSpec.describe "A calc" do
  # 共通化のためのbeforeブロック
  # :exampleで、それぞれのexample開始前に実行する
  # :contextで、最初の1回だけ実行する
  # 省略すると、:exampleになる
  before do
    # テストコード全体で参照する変数は、@をつける
    @calc = Calc.new
  end

  # itで囲まれた範囲がexample
  # 期待される振る舞いのこと
  context "when normal mode" do
    it "given 2 and 3, returns 5" do
      # 期待値:expectで記述する
      expect(@calc.add(2, 3)).to eq(5)
    end
  end

  context "when graph mode" do
    it "draws graph" do
    end
  end

  # 三角測量（違った角度からテストを加えること）
  it "given 5 and 8, returns 13" do
    # 期待値:expectで記述する
    expect(@calc.add(5, 8)).to eq(13)
  end
end