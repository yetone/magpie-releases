class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4477/magpie-cli-darwin-arm64"
      sha256 "d4ac8c75ce1b5f3da56d2f197ab0061dda562050a5ccea4e1495e2a84be0de40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4477/magpie-cli-darwin-amd64"
      sha256 "b1ffeedb32f07c4c45b75a96e66d8bc92db1e74d13b7dcfcbc5ccfda75ff3c9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4477/magpie-cli-linux-arm64"
      sha256 "96912a37c51584c00fa69a1d92c689372d88f32e4c4fdeadd839d01d01c9b6f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4477/magpie-cli-linux-amd64"
      sha256 "b92916b420693792d9b4a3885c5cd750a29adc139d5edd804a2e19f1f816efaf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
