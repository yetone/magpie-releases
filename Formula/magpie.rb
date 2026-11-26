class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4863/magpie-cli-darwin-arm64"
      sha256 "1f7e058a8da7d4bfdc5a809b2a3fbb202e2f45562e103261b6d228aa6337f4a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4863/magpie-cli-darwin-amd64"
      sha256 "851baa1c0ca7d33023adb94de8fb74c0d98382640059e94be2be1de2dbf1d2ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4863/magpie-cli-linux-arm64"
      sha256 "c338464e8de8543b7e50f2ce3877c445ef921923b2394ea175b52b23e1e81e90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4863/magpie-cli-linux-amd64"
      sha256 "be09e31c4809b7fb4f5f6b2b38c2b73d02ca73b876d868a207719eef736e7cf6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
