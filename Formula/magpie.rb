class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3504/magpie-cli-darwin-arm64"
      sha256 "5fd1e8cec6e42cd1171f96b9762511a017ce7fdf67354dcf541254c7b58d454f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3504/magpie-cli-darwin-amd64"
      sha256 "01365eabf727f70ea4d68920729df0b8fcd8ee9b0b8d251482ff4d708c8c80f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3504/magpie-cli-linux-arm64"
      sha256 "6574c227c609ab8e4948c5978c9aed0c340f111f9310050687562655d456ec1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3504/magpie-cli-linux-amd64"
      sha256 "afffc5660f6b26e515eac8c7fa707d3b7e9078219f64d031db9b292870d32f54"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
