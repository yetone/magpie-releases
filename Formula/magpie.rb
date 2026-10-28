class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1872/magpie-cli-darwin-arm64"
      sha256 "06ccbe4390877e7cefcdff545506d641c685bc969c4651043aa031c1f657d269"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1872/magpie-cli-darwin-amd64"
      sha256 "a437264c829a159628649cc1d38394885121a36b9968402c85c9e3a4781c739a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1872/magpie-cli-linux-arm64"
      sha256 "55fb417052dde253d4940981be943f32ad1190f5f5496a8eadd90da880bdde85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1872/magpie-cli-linux-amd64"
      sha256 "6b26921ff236f2a79f0ab56775a011e44212392f2200515add70b23881e3d48f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
