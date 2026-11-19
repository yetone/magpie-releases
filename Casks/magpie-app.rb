cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4567"
  sha256 arm:   "0c81721811bd1fc251a436af131aa3e71f38eeef3cbfb7b371789953f782029c",
         intel: "21b1dbf72b0d80413009bd27d40e2b75bc758a573187eb8d1f37c8b0861df6a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
