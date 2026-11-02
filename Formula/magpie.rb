class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2717/magpie-cli-darwin-arm64"
      sha256 "9b8884b0d200a2ec78a4fd0f1664f66a25b77e05f83e29f880aedf8cd9987bf4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2717/magpie-cli-darwin-amd64"
      sha256 "a379b535b1cad28900e9e9ff25672f5e9a2d1c644dbdff02e0b9281129280372"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2717/magpie-cli-linux-arm64"
      sha256 "b36d99980a010a00d24f4df633922cb51a742b53c58d8a11f7ae67e095ea836e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2717/magpie-cli-linux-amd64"
      sha256 "d555f68259d9fcea6644a92e85535b48e4c6ac18b11920ba131274c52f8a0d3d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
