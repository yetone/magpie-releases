cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3408"
  sha256 arm:   "a9ea95c78e316880291051b33edcd59d5558b3161ebad247568be5eade2cd903",
         intel: "935f8742b23ac5836bf6e8a50454bf6efe6b4b7a3883fefb3f638417a6b7d0ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
