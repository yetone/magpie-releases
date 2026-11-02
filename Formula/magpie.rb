class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2743/magpie-cli-darwin-arm64"
      sha256 "380d573bc8b85cf90d7a714503aca763ee8c166f8e0230330e1ca4bc3fd3ed62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2743/magpie-cli-darwin-amd64"
      sha256 "a7e52f854a62b917d4e0ff4f96c5cd650432b23fb5e1bdcb6934f4f721eec9c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2743/magpie-cli-linux-arm64"
      sha256 "07b21834834d24eb3adf93b2786d3c84d5f4b476a02e351e66d211b7e66e0849"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2743/magpie-cli-linux-amd64"
      sha256 "537e2f7308553dfdbd79392f4ac47ef31619d523c3660d4f12e8ae8c9e20ff39"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
