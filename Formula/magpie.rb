class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2214/magpie-cli-darwin-arm64"
      sha256 "65ad3e652b07977ead5532560fdf7bb1b2d2984c0a09485c480bb4861c9abb59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2214/magpie-cli-darwin-amd64"
      sha256 "26271c353ee65371a4c85bbba7dd88fc77d7833c510783f15a70ab3a2cbcfbe4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2214/magpie-cli-linux-arm64"
      sha256 "ae0078dd3bcb0388905382e9c508d1e1f1ec01d21f056c72608ce0ef73ad3feb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2214/magpie-cli-linux-amd64"
      sha256 "8904725301b3adaefdc98159edfae9211a2555a61a1e5cc536a787950bdd74e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
