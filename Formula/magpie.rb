class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2310/magpie-cli-darwin-arm64"
      sha256 "2f1e95c1a2dfad7decc20ed6fd5443ecba31e8d9ec212ced8cf7c958ba41975b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2310/magpie-cli-darwin-amd64"
      sha256 "85ffe9fb7d825c2eb9f94c035b01cabe8b3817e44ea1e2e1c528dbfc3abbaa5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2310/magpie-cli-linux-arm64"
      sha256 "e7195cad5bb6e47ec4db27d6ed3c3e2e3bec7efbf1c31b17cb1686e59b485008"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2310/magpie-cli-linux-amd64"
      sha256 "e107ed8406c20ccb6b41f93d8aaabd3a2fd61fd1b18bc051cc36cda4018fcb3c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
