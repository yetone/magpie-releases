class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4294/magpie-cli-darwin-arm64"
      sha256 "d6e46d579938744f1f689df5a543ee05e77025de2ab377dce4e567f80d7ddc9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4294/magpie-cli-darwin-amd64"
      sha256 "9a29d46f7e5cd9ef5fc62fce81575daa920c952152f1973f0d36abaf456add0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4294/magpie-cli-linux-arm64"
      sha256 "795113abf0fc6f6a0735010d816261af05d954471fc09a07df8d3bd5bb820e63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4294/magpie-cli-linux-amd64"
      sha256 "896f1b1d340615135b8ffdfc708f4aca971e0ee56df3e04ff7a895369d9d8a9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
