class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2344/magpie-cli-darwin-arm64"
      sha256 "1dda98640c95cd5a90ceabd26f9c8c82754f6f52f5f12d2ca4e444ccd6d51b94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2344/magpie-cli-darwin-amd64"
      sha256 "4367f0ba69e1f7d4a4e96c8a77e9fe58489b906d155405bade1e4fd33e52f315"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2344/magpie-cli-linux-arm64"
      sha256 "20e8c0605c408aa8ffd578db5f6180166187264314921f1970cf80f46b4edc07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2344/magpie-cli-linux-amd64"
      sha256 "fc300912d403ad3a72c0db090aaa072df25dc106c8b0abfe10ccbb2ac93d4365"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
