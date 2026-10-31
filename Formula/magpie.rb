class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2480/magpie-cli-darwin-arm64"
      sha256 "a2f92f474ac220f74f51ecab8ac9256f0597662e47da46ba17d91025b910a8b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2480/magpie-cli-darwin-amd64"
      sha256 "948b5559c291ae3081a3a74f75e7b385f4aabebf58c251ab103ae4e8e33863f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2480/magpie-cli-linux-arm64"
      sha256 "ebbca5af6de07583ac7697ddc723534d26649742be601fca85fd750434036ffa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2480/magpie-cli-linux-amd64"
      sha256 "e183b713a60074b7decab3f1851e3c9013764785d518cb15e679a18f5eb8c9cf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
