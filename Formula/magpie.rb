class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4221/magpie-cli-darwin-arm64"
      sha256 "96ca80641599455d71c585a98dcc7912853ec5dcda37a8c047ccd76fdf564156"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4221/magpie-cli-darwin-amd64"
      sha256 "1834e2f919fd56525b1e075ffb39e19173d32baf98079a693ca122d3968054c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4221/magpie-cli-linux-arm64"
      sha256 "d2029a27ed3f8b348eda9cae7a1d42601c10d64f24e5c2fccb827b3db2119458"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4221/magpie-cli-linux-amd64"
      sha256 "728fe88ad57a725a009faa2687d8fa2db84c0390917aaa41461aac2ee5262601"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
