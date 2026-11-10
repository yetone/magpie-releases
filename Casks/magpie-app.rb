cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3654"
  sha256 arm:   "90aee3a185fc117bd283c256fc90f040905c1a6af57e7d44ac57fb92d5b664d4",
         intel: "ba3d1dc1e4a0942f6347bb8ed421a8697afacabd50b2307239200644f24a353f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
