cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2569"
  sha256 arm:   "1315280c045aa3af2f92d17cfeac2c1691fc0374d6dbdf43d2ddc3bcc3600c83",
         intel: "0cf0f8dad70bb102ab28ec79c536b762e56261c3340481f4679910936de7e444"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
