cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3205"
  sha256 arm:   "44e4fa0424b497823f1de56795b8eba117cc8068aba7d9f4a085314c7f5488f3",
         intel: "03103bc3901ec6544096271b0dfa697a59f113e679a21a72405e40305b3f0c98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
