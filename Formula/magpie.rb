class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2609/magpie-cli-darwin-arm64"
      sha256 "29e808f7a9c2b1d7ea05eae8541a103fbdc135a502b844666544a8b6c8ff7b28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2609/magpie-cli-darwin-amd64"
      sha256 "197ca4c0eebc21f4ac3f603ae78ab2e712b445c5b93aaec0a45c827e976e9e3d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2609/magpie-cli-linux-arm64"
      sha256 "b6cf2d8e3dad255c6ab268e405d2d1bc17e8408148cb042f42aef5e25d9c58c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2609/magpie-cli-linux-amd64"
      sha256 "d0869dda8ac329b6b2daa4f4e23fb18b0f5688bad704cec65c7c8c0df21c3773"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
