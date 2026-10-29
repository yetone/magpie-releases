cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1992"
  sha256 arm:   "713fd80170989f4cb3a27a400982b55fc5fc1a8730381bf4632d9a9a2bb2b8b4",
         intel: "43958902fd8fda51d35ac889c370d79873d0f1819cb02d0a1050acdaa9db80fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
