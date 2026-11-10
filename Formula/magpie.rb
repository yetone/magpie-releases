class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3643/magpie-cli-darwin-arm64"
      sha256 "55339948f3497260aea691e0e85b2865b98bfc13d28f13eecbe82c8d40a32efd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3643/magpie-cli-darwin-amd64"
      sha256 "c22efa967b385c08d5d31b23cfd8d6549dea42df83b1052b308d37f9aaea1db2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3643/magpie-cli-linux-arm64"
      sha256 "b9ba7bc23f6bff9befc967a2bc85dad668f8fec04dc7f529dbbfe59b28126657"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3643/magpie-cli-linux-amd64"
      sha256 "eb41318783107010d811fdcb5ae6b5d493df6e563ddd9de35804f41810cd6656"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
