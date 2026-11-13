class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4002/magpie-cli-darwin-arm64"
      sha256 "75dca9492dc1f18a78049938879a1c15151a3ace0e342e0f85d24014457f03ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4002/magpie-cli-darwin-amd64"
      sha256 "77d124495c9d824b26d79d84af29ae40e0d2a915d28dfd5b0576350c4a110f79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4002/magpie-cli-linux-arm64"
      sha256 "09397303f592e8f31d670a07c8d5655c6c534992b4ddf70cba2780dea074b308"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4002/magpie-cli-linux-amd64"
      sha256 "c92561ef19af4f37fc9378b87e7d20ec038fdb9ccfd9d875e55343ad22f6b1b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
