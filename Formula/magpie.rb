class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4746/magpie-cli-darwin-arm64"
      sha256 "7a9dc351e9b6cf871ae1510148f4831172c49d60e16e5293049504c348f1cba2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4746/magpie-cli-darwin-amd64"
      sha256 "f072d4aace9c0f0d02ff219880a27b347d9a819b94e3a20103a5561c03620592"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4746/magpie-cli-linux-arm64"
      sha256 "5d438b76502febe0df8907e36630d4073d546f2edf23d9d570b059172ade0d9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4746/magpie-cli-linux-amd64"
      sha256 "08dba4c5430e31a0bc1ff8c33f8ba1b419d7329d4af42fc2bad23627c204ecd9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
