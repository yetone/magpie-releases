cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4801"
  sha256 arm:   "de7a03fc15768e0fa5516c2db6614b388807ec7306649abcc8ca5f3e57e07476",
         intel: "447a7501441f320126a01dbecc602726f26d24dcbf7db01e8349150fe5e40c2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
