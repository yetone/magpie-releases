class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2326/magpie-cli-darwin-arm64"
      sha256 "fe2e358da0806ebbaf5458378371dc4c6b759a99aebeb6c40020ef1c343445e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2326/magpie-cli-darwin-amd64"
      sha256 "e75115800d27f77daba355f6149928ddfbdc6deebd2d899162d8e557ed383578"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2326/magpie-cli-linux-arm64"
      sha256 "875410a2382611108e19301e963a8cc8ce2dd0f555ea86d65172ad0aee04a206"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2326/magpie-cli-linux-amd64"
      sha256 "3615e5c3d8464699a4184f3a6e6630b46768de955b72943f6410852a1b6b1ff3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
