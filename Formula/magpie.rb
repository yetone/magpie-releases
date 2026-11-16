class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4315/magpie-cli-darwin-arm64"
      sha256 "e9da2cc6b06b6e9a0e74bb46deddbcda10bd46143d169dd712be92ac33886f6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4315/magpie-cli-darwin-amd64"
      sha256 "c83736fccd37d1ccd6a0dd3fb1998efd77a236c9dad1f48fb39e1de8d71976a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4315/magpie-cli-linux-arm64"
      sha256 "35fc528acaca47e660b3f462e53737a9a29a311d90020b86319ec433bc69db7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4315/magpie-cli-linux-amd64"
      sha256 "1334fd950d69281707daf4ee46f0b7f728fe3ce022d23b83c5e43296328bb9ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
