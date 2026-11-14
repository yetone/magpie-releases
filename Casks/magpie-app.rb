cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4117"
  sha256 arm:   "1156858e86b4b8a727207ee6a3aeb1363916eb52eda5f50819bb7f7717717064",
         intel: "f000660ef38e03b2fac0751265cfade9d1cc40883195a27f01c512b22b822249"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
