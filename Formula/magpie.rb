class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3079/magpie-cli-darwin-arm64"
      sha256 "4c3258e6de9405e87d96d3a9b784797402fb9c80645e175d153581f272e7ebd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3079/magpie-cli-darwin-amd64"
      sha256 "1b824f1c431eaa1201137733de4520150c7b5a29dec54965513c320e21a65687"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3079/magpie-cli-linux-arm64"
      sha256 "75a5c27d938a31de1e9afefa2e3498402ab51e4348070fe1c9c162f66da293cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3079/magpie-cli-linux-amd64"
      sha256 "301945e039fb74aa24417ac1d0b3f4359318861431ff50c93953623659c1e86a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
