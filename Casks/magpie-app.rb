cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2304"
  sha256 arm:   "a6031bb7af5244ff4cec34f2cbb9fee03ff218f7fa6fda18cec0131014dffabb",
         intel: "28f4323aa513e93eff27141193948e29ab1175db5b64b74af898bc8bf77dab6d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
