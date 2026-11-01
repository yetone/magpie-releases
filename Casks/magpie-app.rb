cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2528"
  sha256 arm:   "ed13222aa118a0f5bdab704d81ff497f7f7a072606aace6e4a4838d556ac14c3",
         intel: "ddf91f51e30046ce7b688d1c7505bcf7da7ba9d36f6df4ce50095212db0b21cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
