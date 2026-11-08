cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3310"
  sha256 arm:   "b1a0dd6ab755be998d18baeb1ca831e1ba12882f41aa461d5fc63893f30be837",
         intel: "032514ccc3d01586a2dd80910fb90bf68fa39638871b1dd05b503573728eb2da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
