class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3705/magpie-cli-darwin-arm64"
      sha256 "90fd50fafc821fa354e736ef8da02674f7e17046d8abc6590c756dab6c0fd258"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3705/magpie-cli-darwin-amd64"
      sha256 "6098a60ca20fd7b95cf3214cdc2320f710d58d8015ec6c9931d8a678536aeb03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3705/magpie-cli-linux-arm64"
      sha256 "b40f1cd620afc590103b7afdd72164cd662b4e44bd56be7dce91cddbb5205dc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3705/magpie-cli-linux-amd64"
      sha256 "304708c99a891cc563b0796f4d6f87943b3296b5ddbb946ea3a56405385b6db9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
