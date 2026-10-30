class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2237/magpie-cli-darwin-arm64"
      sha256 "2812bb51ff59d465285bc4f96bb2d40e53e7626572560a989b5510073474a7c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2237/magpie-cli-darwin-amd64"
      sha256 "423df1a6eb9b501a5111006fc2b3a9d003d02092aaa6566a138c30f5b9d4eeaf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2237/magpie-cli-linux-arm64"
      sha256 "168196485ba1482c34bded3c4397c9017abc4d7a295e68764a889f6a4e8ff266"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2237/magpie-cli-linux-amd64"
      sha256 "59f7f6d7e4fe9d7def9b41d989dc317622c4d63d29abbea26cf987f29d4ee547"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
