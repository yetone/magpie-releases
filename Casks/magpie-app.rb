cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2143"
  sha256 arm:   "0b135c1606312a4cb928fe57d0355d5217d123d2f4a54655dce92c3166890f61",
         intel: "e813d84dcda46028b54bc14850c2b82d83ee03c6cbfa020b5179bd876eb4f60d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
