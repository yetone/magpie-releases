class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3287/magpie-cli-darwin-arm64"
      sha256 "593cc4e1c99ef8a9756e185bef5b5702c4b2551d2aa99f19284e422b64ad99a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3287/magpie-cli-darwin-amd64"
      sha256 "3eb283e7898436dca2656b66cf16ab200db79f24e0d5d33b7d2e42c151e08624"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3287/magpie-cli-linux-arm64"
      sha256 "e3412b80c68bbe1409653ac4a9856ce0a41dea04fd8aeff96502e7df2ad3b421"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3287/magpie-cli-linux-amd64"
      sha256 "08c48d784b1040d3c9e94e3a3998a5d387172f1cf06725a9bdc9bc514401a002"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
