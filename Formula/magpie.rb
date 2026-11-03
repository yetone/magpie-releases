class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2839/magpie-cli-darwin-arm64"
      sha256 "e4e9cbda5a123ad6554ab382755358e694bbac6ee9dcaa6cb5e1fe638225f51c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2839/magpie-cli-darwin-amd64"
      sha256 "518fd48b94f762f38ee05225f20c82868edb62073928f9aa3a3657b1ba7388ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2839/magpie-cli-linux-arm64"
      sha256 "aa8c0a410086f490622e9a46cd4c700eceeff5288369865645fbd8a9c9d02056"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2839/magpie-cli-linux-amd64"
      sha256 "fe410fd92a545d1216de6400ec8e97b2cc0bda70ea3ba910a522303cb66b939c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
