cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3657"
  sha256 arm:   "a00627afecaef6fb64abcdb8f9984ea948e2fc81e1ab3faa328d4e6a4f3e9543",
         intel: "e9a034a06bcc71c5315d6493f37764b432dcad57785ce19896f75457b903e174"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
