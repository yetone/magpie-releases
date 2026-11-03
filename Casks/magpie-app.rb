cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2821"
  sha256 arm:   "3016ef1c716675c92c51c1f5e649c6a604a7ef53fe0c33f17957d36e18390399",
         intel: "e692f241f824b138540eaf20ba96c6488aee481b883e33ed234a4027e1628d9f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
