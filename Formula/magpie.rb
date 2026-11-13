class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4047/magpie-cli-darwin-arm64"
      sha256 "b8434af193bfeb90623c3f1d59297424bfbd13edbae22077c6a693fe2d9c34af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4047/magpie-cli-darwin-amd64"
      sha256 "c07a50d3ce87f6ecf19a5fc6919bba7a9c8c155793f11491dba7393de9855cfe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4047/magpie-cli-linux-arm64"
      sha256 "e0211bcac89e6460eeb77873b0a5a0cbd5bc0c46da8e23a260f684ab92fafa55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4047/magpie-cli-linux-amd64"
      sha256 "75babe9fc7bc03fba41eda6bb24b8815e4530c10aa7611ddfb696881e45b6bb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
