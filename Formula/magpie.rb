class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4680/magpie-cli-darwin-arm64"
      sha256 "e2030d61fc7b9d7311df89fbbe70e44005bc6b428bb7c9a50c8c405500611ff3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4680/magpie-cli-darwin-amd64"
      sha256 "0baaad748d0f31c928fed71c5440039e01903fe7e7a9da1be8c3acbfde5ecc44"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4680/magpie-cli-linux-arm64"
      sha256 "7307f8b5d858e67e9524ca82458b932d11dbb6bee558a1b8ce3deb26d83f2210"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4680/magpie-cli-linux-amd64"
      sha256 "607b758934dde93c725505385d384a63c72ebfdfb07de634e6c56486a3df5a2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
