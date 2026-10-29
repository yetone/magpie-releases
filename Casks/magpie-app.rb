cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2110"
  sha256 arm:   "5fd16cc0ba9291491931fb97b88044e4432f3639920e54e411ad504d2ac9659f",
         intel: "187f58aec61423c584654915b083085639fc383dc6f20ed326e688b9beb9098a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
