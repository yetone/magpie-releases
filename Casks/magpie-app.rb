cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1909"
  sha256 arm:   "cb7ce5c618cd47a2641b9377e3e3dc0e38480e6333addf5969090a7547ea6eb3",
         intel: "1ddab0f42799c891599adf6bb6c94610d15b2d2adf9385c1eae6d8fabb062c97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
