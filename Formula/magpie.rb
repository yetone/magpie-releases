class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4505/magpie-cli-darwin-arm64"
      sha256 "861ca0956c7af2ebf4b93e18982c062e44bf8626fbea55e7924cb883d645b4a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4505/magpie-cli-darwin-amd64"
      sha256 "83b7e90f46914d978889da60e2165451561832677f32a2692de8a808719d78e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4505/magpie-cli-linux-arm64"
      sha256 "ba3a11abfd5b303b08202bfaed0838f320f5920acc101287bc9e9109f80015a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4505/magpie-cli-linux-amd64"
      sha256 "5a9541797e7ce0fafa62653c1699935323068501f9becaad69cb4aa76d93dbea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
