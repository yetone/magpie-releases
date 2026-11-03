class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2807/magpie-cli-darwin-arm64"
      sha256 "200b9e8bddfe252a3fb6d9890e51712c48837cf74e5b92f673de86db79fc03c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2807/magpie-cli-darwin-amd64"
      sha256 "ededf8071a017207197d057424a7f6c9a200d3f6368ed45cbe3295909e6d2a63"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2807/magpie-cli-linux-arm64"
      sha256 "55200d6b84c0cfd9f12f1829de1be6313bc6de04a701a35d503e7c958ebbaf7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2807/magpie-cli-linux-amd64"
      sha256 "a36d56381a0223269300cd26040a27a1ac4a96ba3f244b5616b255d5dd8fc565"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
