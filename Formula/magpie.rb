class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4261/magpie-cli-darwin-arm64"
      sha256 "1d152f1c8000e7c8df198c120424064ab5b598f7761c2ff32e2a9110916b7d91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4261/magpie-cli-darwin-amd64"
      sha256 "0187db41f72b000b21a1ddda40d1009eeb2c57dbb954e898831fdfa580e959cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4261/magpie-cli-linux-arm64"
      sha256 "24ec2f418ed80e2ac1ce9cd220db0384476544b816077d212435435d8d45297d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4261/magpie-cli-linux-amd64"
      sha256 "123c343865b072efe66004d809dba9e54dff83b8fcf48b6c135088cc0f6c4bfa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
