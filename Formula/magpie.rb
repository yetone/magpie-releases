class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1147/magpie-cli-darwin-arm64"
      sha256 "1c775a442091411bd587b7ea85bcda549b0b0dfdc40bfab9e0e4a534c907befa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1147/magpie-cli-darwin-amd64"
      sha256 "d9fb7402138ac43db8fbebbae43273bf094aa5f43408d7d3c4a2781f09c9db91"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1147/magpie-cli-linux-arm64"
      sha256 "b5a5606eb554f39c56811edfdf762817dd5894e2e4208e0ff307f8266496a2e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1147/magpie-cli-linux-amd64"
      sha256 "f43b8c8915ee584bfa746293adfed3c2ced3c7cf3eb2dc336effea756f7032af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
